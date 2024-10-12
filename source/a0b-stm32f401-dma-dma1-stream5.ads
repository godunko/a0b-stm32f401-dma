--
--  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

--  STM32F401 DMA 1 Stream 5

package A0B.STM32F401.DMA.DMA1.Stream5
  with Preelaborate
is

   pragma Elaborate_Body;

   DMA1_Stream5 : aliased DMA_Stream
     (Controller => A0B.STM32F401.DMA.DMA1.DMA1'Access,
      Stream     => 5,
      Interrupt  => A0B.STM32F401.DMA1_Stream5);

end A0B.STM32F401.DMA.DMA1.Stream5;
