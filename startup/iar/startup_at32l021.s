;**************************************************************************
;* @file     startup_at32l021.s
;* @brief    at32l021 startup file for IAR Systems
;**************************************************************************
;

; Amount of memory (in bytes) allocated for Stack
; Tailor this value to your application needs
; <h> Stack Configuration
;   <o> Stack Size (in Bytes) <0x0-0xFFFFFFFF:8>
; </h>
;

        MODULE  ?cstartup

        ;; Forward declaration of sections.
        SECTION CSTACK:DATA:NOROOT(3)

        SECTION .intvec:CODE:NOROOT(2)

        EXTERN  __iar_program_start
        EXTERN  SystemInit
        PUBLIC  __vector_table

        DATA
__vector_table
        DCD     sfe(CSTACK)
        DCD     Reset_Handler                       ; Reset Handler
        DCD     NMI_Handler                         ; NMI Handler
        DCD     HardFault_Handler                   ; Hard Fault Handler
        DCD     0                                   ; Reserved
        DCD     0                                   ; Reserved
        DCD     0                                   ; Reserved
        DCD     0                                   ; Reserved
        DCD     0                                   ; Reserved
        DCD     0                                   ; Reserved
        DCD     0                                   ; Reserved
        DCD     SVC_Handler                         ; SVCall Handler
        DCD     0                                   ; Reserved
        DCD     0                                   ; Reserved
        DCD     PendSV_Handler                      ; PendSV Handler
        DCD     SysTick_Handler                     ; SysTick Handler

        ; External Interrupts
        DCD     WWDT_IRQHandler                     ; Window Watchdog Timer
        DCD     PVM_IRQHandler                      ; PVM through EXINT Line detect
        DCD     ERTC_IRQHandler                     ; ERTC
        DCD     FLASH_IRQHandler                    ; Flash
        DCD     CRM_IRQHandler                      ; CRM
        DCD     EXINT1_0_IRQHandler                 ; EXINT Line 1 & 0
        DCD     EXINT3_2_IRQHandler                 ; EXINT Line 3 & 2
        DCD     EXINT15_4_IRQHandler                ; EXINT Line 15 ~ 4
        DCD     HWDIV_IRQHandler                    ; Hardware divider
        DCD     DMA1_Channel1_IRQHandler            ; DMA1 Channel 1
        DCD     DMA1_Channel3_2_IRQHandler          ; DMA1 Channel 3 & 2
        DCD     DMA1_Channel5_4_IRQHandler          ; DMA1 Channel 5 & 4
        DCD     ADC1_IRQHandler                     ; ADC1
        DCD     TMR1_BRK_OVF_TRG_HALL_IRQHandler    ; TMR1 brake overflow trigger and hall
        DCD     TMR1_CH_IRQHandler                  ; TMR1 channel
        DCD     0                                   ; Reserved
        DCD     TMR3_GLOBAL_IRQHandler              ; TMR3
        DCD     TMR6_GLOBAL_IRQHandler              ; TMR6
        DCD     0                                   ; Reserved
        DCD     TMR14_GLOBAL_IRQHandler             ; TMR14
        DCD     TMR15_GLOBAL_IRQHandler             ; TMR15
        DCD     TMR16_GLOBAL_IRQHandler             ; TMR16
        DCD     TMR17_GLOBAL_IRQHandler             ; TMR17
        DCD     I2C1_IRQHandler                     ; I2C1
        DCD     I2C2_IRQHandler                     ; I2C2
        DCD     SPI1_IRQHandler                     ; SPI1
        DCD     SPI2_IRQHandler                     ; SPI2
        DCD     USART1_IRQHandler                   ; USART1
        DCD     USART2_IRQHandler                   ; USART2
        DCD     USART4_3_IRQHandler                 ; USART4 & USART3
        DCD     CAN1_IRQHandler                     ; CAN1

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Default interrupt handlers.
;;
        THUMB

        PUBWEAK Reset_Handler
        SECTION .text:CODE:REORDER:NOROOT(2)
Reset_Handler
        LDR     R0, =SystemInit
        BLX     R0
        LDR     R0, =__iar_program_start
        BX      R0

        PUBWEAK NMI_Handler
        SECTION .text:CODE:REORDER:NOROOT(1)
NMI_Handler
        B NMI_Handler

        PUBWEAK HardFault_Handler
        SECTION .text:CODE:REORDER:NOROOT(1)
HardFault_Handler
        B HardFault_Handler

        PUBWEAK SVC_Handler
        SECTION .text:CODE:REORDER:NOROOT(1)
SVC_Handler
        B SVC_Handler

        PUBWEAK PendSV_Handler
        SECTION .text:CODE:REORDER:NOROOT(1)
PendSV_Handler
        B PendSV_Handler

        PUBWEAK SysTick_Handler
        SECTION .text:CODE:REORDER:NOROOT(1)
SysTick_Handler
        B SysTick_Handler

        PUBWEAK WWDT_IRQHandler
        SECTION .text:CODE:REORDER:NOROOT(1)
WWDT_IRQHandler
        B WWDT_IRQHandler

        PUBWEAK PVM_IRQHandler
        SECTION .text:CODE:REORDER:NOROOT(1)
PVM_IRQHandler
        B PVM_IRQHandler

        PUBWEAK ERTC_IRQHandler
        SECTION .text:CODE:REORDER:NOROOT(1)
ERTC_IRQHandler
        B ERTC_IRQHandler

        PUBWEAK FLASH_IRQHandler
        SECTION .text:CODE:REORDER:NOROOT(1)
FLASH_IRQHandler
        B FLASH_IRQHandler

        PUBWEAK CRM_IRQHandler
        SECTION .text:CODE:REORDER:NOROOT(1)
CRM_IRQHandler
        B CRM_IRQHandler

        PUBWEAK EXINT1_0_IRQHandler
        SECTION .text:CODE:REORDER:NOROOT(1)
EXINT1_0_IRQHandler
        B EXINT1_0_IRQHandler

        PUBWEAK EXINT3_2_IRQHandler
        SECTION .text:CODE:REORDER:NOROOT(1)
EXINT3_2_IRQHandler
        B EXINT3_2_IRQHandler

        PUBWEAK EXINT15_4_IRQHandler
        SECTION .text:CODE:REORDER:NOROOT(1)
EXINT15_4_IRQHandler
        B EXINT15_4_IRQHandler

        PUBWEAK HWDIV_IRQHandler
        SECTION .text:CODE:REORDER:NOROOT(1)
HWDIV_IRQHandler
        B HWDIV_IRQHandler

        PUBWEAK DMA1_Channel1_IRQHandler
        SECTION .text:CODE:REORDER:NOROOT(1)
DMA1_Channel1_IRQHandler
        B DMA1_Channel1_IRQHandler

        PUBWEAK DMA1_Channel3_2_IRQHandler
        SECTION .text:CODE:REORDER:NOROOT(1)
DMA1_Channel3_2_IRQHandler
        B DMA1_Channel3_2_IRQHandler

        PUBWEAK DMA1_Channel5_4_IRQHandler
        SECTION .text:CODE:REORDER:NOROOT(1)
DMA1_Channel5_4_IRQHandler
        B DMA1_Channel5_4_IRQHandler

        PUBWEAK ADC1_IRQHandler
        SECTION .text:CODE:REORDER:NOROOT(1)
ADC1_IRQHandler
        B ADC1_IRQHandler

        PUBWEAK TMR1_BRK_OVF_TRG_HALL_IRQHandler
        SECTION .text:CODE:REORDER:NOROOT(1)
TMR1_BRK_OVF_TRG_HALL_IRQHandler
        B TMR1_BRK_OVF_TRG_HALL_IRQHandler

        PUBWEAK TMR1_CH_IRQHandler
        SECTION .text:CODE:REORDER:NOROOT(1)
TMR1_CH_IRQHandler
        B TMR1_CH_IRQHandler

        PUBWEAK TMR3_GLOBAL_IRQHandler
        SECTION .text:CODE:REORDER:NOROOT(1)
TMR3_GLOBAL_IRQHandler
        B TMR3_GLOBAL_IRQHandler

        PUBWEAK TMR6_GLOBAL_IRQHandler
        SECTION .text:CODE:REORDER:NOROOT(1)
TMR6_GLOBAL_IRQHandler
        B TMR6_GLOBAL_IRQHandler

        PUBWEAK TMR14_GLOBAL_IRQHandler
        SECTION .text:CODE:REORDER:NOROOT(1)
TMR14_GLOBAL_IRQHandler
        B TMR14_GLOBAL_IRQHandler

        PUBWEAK TMR15_GLOBAL_IRQHandler
        SECTION .text:CODE:REORDER:NOROOT(1)
TMR15_GLOBAL_IRQHandler
        B TMR15_GLOBAL_IRQHandler

        PUBWEAK TMR16_GLOBAL_IRQHandler
        SECTION .text:CODE:REORDER:NOROOT(1)
TMR16_GLOBAL_IRQHandler
        B TMR16_GLOBAL_IRQHandler

        PUBWEAK TMR17_GLOBAL_IRQHandler
        SECTION .text:CODE:REORDER:NOROOT(1)
TMR17_GLOBAL_IRQHandler
        B TMR17_GLOBAL_IRQHandler

        PUBWEAK I2C1_IRQHandler
        SECTION .text:CODE:REORDER:NOROOT(1)
I2C1_IRQHandler
        B I2C1_IRQHandler

        PUBWEAK I2C2_IRQHandler
        SECTION .text:CODE:REORDER:NOROOT(1)
I2C2_IRQHandler
        B I2C2_IRQHandler

        PUBWEAK SPI1_IRQHandler
        SECTION .text:CODE:REORDER:NOROOT(1)
SPI1_IRQHandler
        B SPI1_IRQHandler

        PUBWEAK SPI2_IRQHandler
        SECTION .text:CODE:REORDER:NOROOT(1)
SPI2_IRQHandler
        B SPI2_IRQHandler

        PUBWEAK USART1_IRQHandler
        SECTION .text:CODE:REORDER:NOROOT(1)
USART1_IRQHandler
        B USART1_IRQHandler

        PUBWEAK USART2_IRQHandler
        SECTION .text:CODE:REORDER:NOROOT(1)
USART2_IRQHandler
        B USART2_IRQHandler

        PUBWEAK USART4_3_IRQHandler
        SECTION .text:CODE:REORDER:NOROOT(1)
USART4_3_IRQHandler
        B USART4_3_IRQHandler

        PUBWEAK CAN1_IRQHandler
        SECTION .text:CODE:REORDER:NOROOT(1)
CAN1_IRQHandler
        B CAN1_IRQHandler

        END
