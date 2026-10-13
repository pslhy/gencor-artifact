(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the two numbers differ at one bit position only or not. *)
let rec differ_At_One_Bit_Pos (a : int) (b : int) : bool =
    let mask = 1 lsl (highest_bit a + highest_bit b) in
    (a lxor b) land mask <> 0

let highest_bit n =
    if n <= 0 then
        0
    else
        let rec loop n b =
            if n land 1 = 1 then
                b
            else
                loop (n lsr 1) (b + 1)
        in
        loop n 0

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:23: Unbound value "highest_bit" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec differ_At_One_Bit_Pos (a : int) (b : int) : bool =
  let mask = 1 lsl (highest_bit a + highest_bit b) in
  (a lxor b) land mask <> 0

let highest_bit = function
  | n when n = 0 -> 0
  | n -> 1 + highest_bit (n asr 1)

let () =
  Printf.printf "Testing differ_At_One_Bit_Pos function: \n";
  Printf.printf "Input 1: %d, Input 2: %d, Result: %b \n" 1 2 ((differ_At_One_Bit_Pos 1 2) : bool);
  Printf.printf "Input 1: %d, Input 2: %d, Result: %b \n" 2 2 ((differ_At_One_Bit_Pos 2 2) : bool);
  Printf.printf "Input 1: %d, Input 2: %d, Result: %b \n" 1 1 ((differ_At_One_Bit_Pos 1 1) : bool);

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:21: Unbound value "highest_bit" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec differ_At_One_Bit_Pos (a : int) (b : int) : bool =
  let mask = 1 lsl (highest_bit a + highest_bit b) in
  (a lxor b) land mask <> 0

and highest_bit (n : int) : int =
  if n = 0 then
    0
  else
    highest_bit n - 1

