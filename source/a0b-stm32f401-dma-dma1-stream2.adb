--
--  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

package body A0B.STM32F401.DMA.DMA1.Stream2 is

   procedure DMA1_Stream2_Handler
     with Export, Convention => C, External_Name => "DMA1_Stream2_Handler";

   --------------------------
   -- DMA1_Stream2_Handler --
   --------------------------

   procedure DMA1_Stream2_Handler is
   begin
      DMA1_Stream2.On_Interrupt;
   end DMA1_Stream2_Handler;

end A0B.STM32F401.DMA.DMA1.Stream2;
