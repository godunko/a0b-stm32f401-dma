--
--  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

--  STM32F401 DMA 1 Stream 4

package A0B.STM32F401.DMA.DMA1.Stream4
  with Preelaborate
is

   pragma Elaborate_Body;

   DMA1_Stream4 : aliased DMA_Stream
     (Controller => A0B.STM32F401.DMA.DMA1.DMA1'Access,
      Stream     => 4,
      Interrupt  => A0B.STM32F401.DMA1_Stream4);

end A0B.STM32F401.DMA.DMA1.Stream4;
