#include <chrono>  // Include for std::chrono::seconds
#include <filesystem>
#include <iostream>
#include <string>
#include <thread>  // Include for std::this_thread::sleep_for
#include <vector>

#include "../../libtidesdb.h"

int main() {
    // Define parameters
    std::string directory = "./tidesdb_data";  // The directory for storing data
    std::filesystem::perms directoryPerm =
        std::filesystem::perms::owner_all | std::filesystem::perms::group_read;  // Permissions
    int memtableFlushSize = 6 * 4;  // Flush size to trigger after 6 key-value pairs (24 bytes)
    int compactionInterval = 22;

    try {
        // Initialize the LSMT
        auto lsmTree =
            TidesDB::LSMT::New(directory, directoryPerm, memtableFlushSize, compactionInterval);

        // Insert 12 key-value pairs to trigger two flushes
        for (int i = 0; i < 12; i++) {
            std::vector<uint8_t> key = {
                static_cast<uint8_t>((i >> 16) & 0xFF),  // First byte
                static_cast<uint8_t>((i >> 8) & 0xFF),   // Second byte
                static_cast<uint8_t>(i & 0xFF)           // Third byte
            };
            std::vector<uint8_t> value = {static_cast<uint8_t>(i)};

            lsmTree->Put(key, value);
        }

        // Sleep for a while to let the background thread complete the flush
        std::this_thread::sleep_for(std::chrono::milliseconds(755));

        // Check for all 12 keys
        for (int i = 0; i < 12; i++) {
            std::vector<uint8_t> key = {
                static_cast<uint8_t>((i >> 16) & 0xFF),  // First byte
                static_cast<uint8_t>((i >> 8) & 0xFF),   // Second byte
                static_cast<uint8_t>(i & 0xFF)           // Third byte
            };
            std::vector<uint8_t> dat = lsmTree->Get(key);

            if (dat.size() == 0) {
                std::cerr << "Key " << i << " not found Get test failed" << std::endl;
            } else {
                std::cout << "Key " << i << " found Get test passed" << std::endl;
            }
        }

        lsmTree->Close();

        // Remove the directory
        // std::filesystem::remove_all(directory);

        return 0;

    } catch (const std::exception &e) {
        std::cerr << "Error initializing LSMT: " << e.what() << std::endl;
    }
}