
let rec circular_shift (x : int) (shift : int) : string =
  if shift > String.length (string_of_int x) then
    let s = string_of_int x in
    let rev = String.concat "" (Array.to_list (Array.of_list (List.rev (String.split_on_char '.' s)))) in
    rev
  else
    let s = string_of_int x in
    let split = String.split_on_char '.' s in
    let reversed = List.rev split in
    let shifted =
      match shift with
      | 0 -> split
      | _ -> List.map (fun d -> d) (List.tl reversed) @ [List.hd reversed]
    in
    let joined = List.fold_left (fun acc d -> acc ^ d) "" shifted in
    joined

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
