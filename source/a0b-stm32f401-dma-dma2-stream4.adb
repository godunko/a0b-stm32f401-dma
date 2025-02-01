--
--  Copyright (C) 2025, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

package body A0B.STM32F401.DMA.DMA2.Stream4 is

   procedure DMA2_Stream4_Handler
     with Export, Convention => C, External_Name => "DMA2_Stream4_Handler";

   --------------------------
   -- DMA1_Stream4_Handler --
   --------------------------

   procedure DMA2_Stream4_Handler is
   begin
      DMA2_Stream4.On_Interrupt;
   end DMA2_Stream4_Handler;

end A0B.STM32F401.DMA.DMA2.Stream4;
