set -euo pipefail
./create_database.py ~/AudioDatabases/Vocal_examples ~/AnalysedAudioDatabases/Vocal_examples --reanalyse
./create_database.py ~/AudioDatabases/Viola ~/AnalysedAudioDatabases/Viola3 --reanalyse
./run_matching.py ~/AnalysedAudioDatabases/Viola3 ~/AnalysedAudioDatabases/Vocal_examples ~/OutputDatabases/TestOutput --rematch
./synthesize_output.py ~/AnalysedAudioDatabases/Viola3 ~/OutputDatabases/TestOutput ~/AnalysedAudioDatabases/Vocal_examples
