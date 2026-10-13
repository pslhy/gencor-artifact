(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Circular shift the digits of the integer x, shift the digits right by shift *)
(*     and return the result as a string. *)
(*     If shift > number of digits, return digits reversed. *)
(*     >>> circular_shift 12 1 *)
(*     "21" *)
(*     >>> circular_shift 12 2 *)
(*     "12" *)
let rec circular_shift (x : int) (shift : int) : string = 
  let digits = Printf.sprintf "%d" x in
  let len = String.length digits in
  if shift > len then
    String.rev digits
  else
    let shift = shift mod len in
    let part1 = String.sub digits (len - shift) shift in
    let part2 = String.sub digits 0 (len - shift) in
    part1 ^ part2

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:5: Unbound value "String.rev" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec circular_shift (x : int) (shift : int) : string = 
  let digits = Printf.sprintf "%d" x in
  let len = String.length digits in
  if shift > len then
    let reversed = ref "" in
    for i = 0 to len - 1 do
      reversed := digits.[i] :: !reversed
    done;
    String.concat "" !reversed
  else
    let shift = shift mod len in
    let part1 = String.sub digits (len - shift) shift in
    let part2 = String.sub digits 0 (len - shift) in
    part1 ^ part2

