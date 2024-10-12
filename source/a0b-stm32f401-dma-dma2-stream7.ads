--
--  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

--  STM32F401 DMA 2 Stream 7

package A0B.STM32F401.DMA.DMA2.Stream7
  with Preelaborate
is

   pragma Elaborate_Body;

   DMA2_Stream7 : aliased DMA_Stream
     (Controller => A0B.STM32F401.DMA.DMA2.DMA2'Access,
      Stream     => 7,
      Interrupt  => A0B.STM32F401.DMA2_Stream7);

end A0B.STM32F401.DMA.DMA2.Stream7;
