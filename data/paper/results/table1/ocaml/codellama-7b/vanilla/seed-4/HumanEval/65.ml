let rec circular_shift (x : int) (shift : int) : string =
  let digits =
    x
    |> string_of_int
    |> String.split_on_char ' '
    |> List.map int_of_string in
  let shifted_digits =
    match shift < List.length digits with
    | true -> List.drop (digits, shift) @ List.take (digits, shift)
    | false -> List.rev digits in
  shifted_digits |> List.map string_of_int |> String.concat ""


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
