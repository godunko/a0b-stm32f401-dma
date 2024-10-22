--
--  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

package body A0B.STM32F401.DMA.DMA2.Stream3 is

   procedure DMA2_Stream3_Handler
     with Export, Convention => C, External_Name => "DMA2_Stream3_Handler";

   --------------------------
   -- DMA1_Stream3_Handler --
   --------------------------

   procedure DMA2_Stream3_Handler is
   begin
      DMA2_Stream3.On_Interrupt;
   end DMA2_Stream3_Handler;

end A0B.STM32F401.DMA.DMA2.Stream3;
