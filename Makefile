FC = gfortran
SRC_DIR = src
BIN_DIR = bin

# ソースファイルのリスト
SRCS = $(wildcard $(SRC_DIR)/*.f90)

# オブジェクトファイルのリスト
OBJS = $(patsubst $(SRC_DIR)/%.f90, $(BIN_DIR)/%.o, $(SRCS))

# コンパイルオプション
FFLAGS = -Wall

# ターゲット
all: $(BIN_DIR)/main

# オブジェクトファイルのビルド
$(BIN_DIR)/%.o: $(SRC_DIR)/%.f90
	$(FC) $(FFLAGS) -c $< -o $@

# 実行ファイルのビルド
$(BIN_DIR)/main: $(OBJS)
	$(FC) $(FFLAGS) $^ -o $@

# クリーン
clean:
	rm -f $(BIN_DIR)/*.o $(BIN_DIR)/main
