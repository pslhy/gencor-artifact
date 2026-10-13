let rec circular_shift (x : int) (shift : int) : string =
  let digits = [| 0 |] in
  let rec get_digits acc x =
    if x < 10 then (x :: acc) else get_digits (acc @ [x mod 10]) (x / 10)
  in
  let digits = get_digits [] (abs x) in

  let shift = if shift > Array.length digits then Array.length digits else shift in

  let rec shift_right digits shift =
    if shift = 0 then digits
    else Array.append (Array.sub digits shift (Array.length digits - shift)) (Array.sub digits 0 shift)
  in

  let reversed = Array.rev (shift_right digits shift) in
  Array.reduce ( ^ ) "0" (Array.of_list reversed)

let () =
  let x = 12 in
  let shift = 1 in
  print_endline (circular_shift x shift)


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
