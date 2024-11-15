CONFIG_DIR="./cache"
export KIKOERU_URL="http://172.24.208.1:8000"
export KIKOERU_USER="admin"
export KIKOERU_PASSWORD="Ayoadmin"
export WORKER_NAME="unix_01"
export BG_TASK_WAIT_SECS="30"
export DB_PATH="$CONFIG_DIR/db" # 数据库目录
export INPUT_PATH="$CONFIG_DIR/input" # 音频存储目录，其中的音频文件在完成后会被删除
export OUTPUT_PATH="$CONFIG_DIR/output" # 字幕输出目录，长期存储，不删除
export MODEL_PATH="$CONFIG_DIR/model" # 只读文件夹，模型存放路径，文件夹类似这个样子: ./cache/model/model.bin
export TRANSCRIBE_DEVICE="cuda" # 运行转译的加速设备，如果不提供，默认使用cpu

python ../run_kikoeru_worker.py