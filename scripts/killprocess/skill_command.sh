#!/bin/sh


<<COMMENT
名稱：skill  

使用權限：所有使用者  

使用方式： skill [signal to send] [options] 選擇程序的規則  

說明： 

送個訊號給正在執行的程序,預設的訊息為 TERM (中斷) , 較常使用的訊息為 HUP , INT , KILL , STOP , CONT ,和 0  

訊息有三種寫法:分別為 -9 , -SIGKILL , -KILL , 可以使用 -l 或 -L 已列出可使用的訊息。  

一般參數：  

-f 快速模式/尚未完成  

-i 互動模式/ 每個動作將要被確認  

-v 詳細輸出/ 列出所選擇程序的資訊  

-w 智能警告訊息/ 尚未完成  

-n 沒有動作/ 顯示程序代號  

參數：選擇程序的規則可以是, 終端機代號,使用者名稱,程序代號,命令名稱。  

-t 終端機代號 ( tty 或 pty )  

-u 使用者名稱  

-p 程序代號 ( pid )  

-c 命令名稱 可使用的訊號: 

以下列出已知的訊號名稱,訊號代號,功能。  

名稱 (代號) 功能/ 描述  

ALRM 14 離開  

HUP 1 離開  

INT 2 離開  

KILL 9 離開/ 強迫關閉  

PIPE 13 離開  

POLL 離開  

PROF 離開  

TERM 15 離開  

USR1 離開  

USR2 離開  

VTALRM 離開  

STKFLT 離開/ 只適用i386, m68k, arm 和 ppc 硬件  

UNUSED 離開/ 只適用i386, m68k, arm 和 ppc 硬件  

TSTP 停止 /產生與內容相關的行為  

TTIN 停止 /產生與內容相關的行為  

TTOU 停止 /產生與內容相關的行為  

STOP 停止 /強迫關閉  

CONT 從新啟動 /如果在停止狀態則從新啟動,否則忽略  

PWR 忽略 /在某些系統中會離開  

WINCH 忽略  

CHLD 忽略  

ABRT 6 核心  

FPE 8 核心  

ILL 4 核心  

QUIT 3 核心  

SEGV 11 核心  

TRAP 5 核心  

SYS 核心 /或許尚未實作  

EMT 核心 /或許尚未實作  

BUS 核心 /核心失敗  

XCPU 核心 /核心失敗  

XFSZ 核心 /核心失敗  

COMMENT
#范例：  

#停止所有在 PTY 裝置上的程序  
  skill -KILL -v pts/*   
  
#停止三個使用者 user1 , user2 , user3  
  skill -STOP user1 user2 user3   
  
