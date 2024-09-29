--
--  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

--  STM32F401 DMA 1 Stream 2

package A0B.STM32F401.DMA.DMA1.Stream2
  with Preelaborate
is

   pragma Elaborate_Body;

   DMA1_Stream2 : aliased DMA_Stream
     (Controller => A0B.STM32F401.DMA.DMA1.DMA1'Access,
      Stream     => 2,
      Interrupt  => A0B.STM32F401.DMA1_Stream2);

end A0B.STM32F401.DMA.DMA1.Stream2;
