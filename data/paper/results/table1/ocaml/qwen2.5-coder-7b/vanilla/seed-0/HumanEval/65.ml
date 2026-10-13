let rec circular_shift (x : int) (shift : int) : string = 
  let digits = string_of_int x in
  let len = String.length digits in
  if shift > len then
    let reversed = ref "" in
    for i = len - 1 downto 0 do
      reversed := !reversed ^ String.sub digits i 1
    done;
    !reversed
  else
    let actual_shift = shift mod len in
    let front = String.sub digits (len - actual_shift) actual_shift in
    let back = String.sub digits 0 (len - actual_shift) in
    front ^ back


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Circular shift the digits of the integer x, shift the digits right by shift *)
(*     and return the result as a string. *)
(*     If shift > number of digits, return digits reversed. *)
(*     >>> circular_shift 12 1 *)
(*     "21" *)
(*     >>> circular_shift 12 2 *)
(*     "12" *)
