--
--  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

package body A0B.STM32F401.DMA.DMA2.Stream7 is

   procedure DMA2_Stream7_Handler
     with Export, Convention => C, External_Name => "DMA2_Stream7_Handler";

   --------------------------
   -- DMA1_Stream7_Handler --
   --------------------------

   procedure DMA2_Stream7_Handler is
   begin
      DMA2_Stream7.On_Interrupt;
   end DMA2_Stream7_Handler;

end A0B.STM32F401.DMA.DMA2.Stream7;
