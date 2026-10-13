let rec circular_shift (x : int) (shift : int) : string =
    let num_digits = String.length (string_of_int x) in
    if shift > num_digits then
        let str = String.of_seq (List.to_seq (List.rev (string_to_list_of_int x))) in
        str
    else
        let rec shift_digits (n : int) (s : int) : string =
            if n = s then " " ^ string_of_int x
            else let str = String.sub (string_of_int x) 1 (num_digits - 1) ^ String.make 1 (string_of_int x).[0] in
                 shift_digits (n+1) s
        in
        shift_digits 1 shift

and string_to_list_of_int (x : int) : char list =
    let rec explode_string (str : string) (acc : char list) : char list =
        if str = "" then acc
        else explode_string (String.sub str 1 (String.length str - 1)) ((String.get str 0) :: acc)
    in
    explode_string (string_of_int x) []


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
