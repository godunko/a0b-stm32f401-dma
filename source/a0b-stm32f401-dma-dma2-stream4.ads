--
--  Copyright (C) 2025, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

--  STM32F401 DMA 2 Stream 4

package A0B.STM32F401.DMA.DMA2.Stream4
  with Preelaborate
is

   pragma Elaborate_Body;

   DMA2_Stream4 : aliased DMA_Stream
     (Controller => A0B.STM32F401.DMA.DMA2.DMA2'Access,
      Stream     => 4,
      Interrupt  => A0B.STM32F401.DMA2_Stream4);

end A0B.STM32F401.DMA.DMA2.Stream4;
