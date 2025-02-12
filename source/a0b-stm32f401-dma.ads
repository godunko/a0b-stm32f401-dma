--
--  Copyright (C) 2024-2025, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

--  STM32F401 DMA

pragma Restrictions (No_Elaboration_Code);

with System;

with A0B.Callbacks;
with A0B.STM32F401.SVD.DMA;
with A0B.Types;

package A0B.STM32F401.DMA
  with Preelaborate
is

   type Controller_Number is range 1 .. 2;

   type Stream_Number is mod 8;

   type Channel_Number is mod 8;

   type Data_Size is (Byte, Half_Word, Word);

   type DMA_Controller
     (Peripheral : not null access A0B.STM32F401.SVD.DMA.DMA_Peripheral;
      Controller : Controller_Number) is
     tagged limited private with Preelaborable_Initialization;

   type DMA_Stream
     (Controller : not null access DMA_Controller'Class;
      Stream     : Stream_Number;
      Interrupt  : A0B.STM32F401.Interrupt_Number) is
     tagged limited private with Preelaborable_Initialization;

   procedure Configure_Memory_To_Peripheral
     (Self                 : in out DMA_Stream'Class;
      Channel              : Channel_Number;
      Peripheral           : System.Address;
      Peripheral_Data_Size : Data_Size;
      Memory_Data_Size     : Data_Size);
   --  Configure stream to do memory-to-peripheral transfers. All stream's
   --  interrupts are disabled, while NVIC interrupts are enabled.

   procedure Configure_Peripheral_To_Memory
     (Self                 : in out DMA_Stream'Class;
      Channel              : Channel_Number;
      Peripheral           : System.Address;
      Peripheral_Data_Size : Data_Size;
      Memory_Data_Size     : Data_Size;
      Circular_Mode        : Boolean := False);

   procedure Set_Memory_Buffer
     (Self      : in out DMA_Stream'Class;
      Memory    : System.Address;
      Count     : A0B.Types.Unsigned_16;
      Increment : Boolean := True);
   --  Sets address of the memory buffer and number of items to be transferred.
   --
   --  @param Increment  Whether or not to increment memory address.

   procedure Set_Interrupt_Callback
     (Self     : in out DMA_Stream'Class;
      Callback : A0B.Callbacks.Callback);

   procedure Enable (Self : in out DMA_Stream'Class);
   --  Enables stream

   procedure Disable (Self : in out DMA_Stream'Class);
   --  Disables stream

   procedure Enable_Half_Transfer_Interrupt (Self : in out DMA_Stream'Class);

   procedure Enable_Transfer_Complete_Interrupt
     (Self : in out DMA_Stream'Class);

   function Remaining_Items
     (Self : DMA_Stream'Class) return A0B.Types.Unsigned_16;

   --  function Is_Transfer_Completed (Self : DMA_Stream'Class) return Boolean;

   function Get_Masked_And_Clear_Half_Transfer
     (Self : in out DMA_Stream'Class) return Boolean;
   --  Returns True when half transfer and interrupt is enabled (both
   --  xISR.HT and SxCR.HTIE are set to 1); and clear interrupt status
   --  unconditionally.

   function Get_Masked_And_Clear_Transfer_Completed
     (Self : in out DMA_Stream'Class) return Boolean;
   --  Returns True when transfer completed and interrupt is enabled (both
   --  xISR.TC and SxCR.TCIE are set to 1); and clear interrupt status
   --  unconditionally.

   procedure Clear_Interrupt_Status (Self : in out DMA_Stream'Class);
   --  Clears all interrupt status bits.

private

   type DMA_Controller
     (Peripheral : not null access A0B.STM32F401.SVD.DMA.DMA_Peripheral;
      Controller : Controller_Number) is
     tagged limited null record;

   procedure Enable_Clock (Self : in out DMA_Controller'Class);

   type DMA_Stream
     (Controller : not null access DMA_Controller'Class;
      Stream     : Stream_Number;
      Interrupt  : A0B.STM32F401.Interrupt_Number) is tagged limited
   record
      Callback : A0B.Callbacks.Callback;
   end record;

   procedure On_Interrupt (Self : in out DMA_Stream'Class);

end A0B.STM32F401.DMA;
