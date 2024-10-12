--
--  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

package body A0B.STM32F401.DMA.DMA1.Stream5
  with Preelaborate
is

   procedure DMA1_Stream5_Handler
     with Export, Convention => C, External_Name => "DMA1_Stream5_Handler";

   --------------------------
   -- DMA1_Stream5_Handler --
   --------------------------

   procedure DMA1_Stream5_Handler is
   begin
      DMA1_Stream5.On_Interrupt;
   end DMA1_Stream5_Handler;

end A0B.STM32F401.DMA.DMA1.Stream5;
