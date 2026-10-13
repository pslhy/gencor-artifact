let rec circular_shift (x : int) (shift : int) : string =
    if x < 0 then
        invalid_arg "circular_shift"
    else if shift = 0 then
        string_of_int x
    else
        let last_digit = x mod 10 in
        let first_digit = x / 10 in
        if shift > 1 then
            circular_shift (last_digit * 10 + first_digit) (shift - 1)
        else
            string_of_int (last_digit + 1) ^ string_of_int first_digit


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
