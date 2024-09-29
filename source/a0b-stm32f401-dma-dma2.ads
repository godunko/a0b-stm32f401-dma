--
--  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

--  STM32F401 DMA 2

package A0B.STM32F401.DMA.DMA2
  with Preelaborate
is

   DMA2 : aliased DMA_Controller
     (Peripheral => A0B.STM32F401.SVD.DMA.DMA2_Periph'Access,
      Controller => 2);

end A0B.STM32F401.DMA.DMA2;
