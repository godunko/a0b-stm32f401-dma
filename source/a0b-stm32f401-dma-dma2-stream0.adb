--
--  Copyright (C) 2025, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

package body A0B.STM32F401.DMA.DMA2.Stream0 is

   procedure DMA2_Stream0_Handler
     with Export, Convention => C, External_Name => "DMA2_Stream0_Handler";

   --------------------------
   -- DMA1_Stream0_Handler --
   --------------------------

   procedure DMA2_Stream0_Handler is
   begin
      DMA2_Stream0.On_Interrupt;
   end DMA2_Stream0_Handler;

end A0B.STM32F401.DMA.DMA2.Stream0;
