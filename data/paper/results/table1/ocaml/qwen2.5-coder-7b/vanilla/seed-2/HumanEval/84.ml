let rec solve (n : int) : string = 
    if n = 0 then "0"
    else 
        let rec to_binary (n : int) (acc : string) : string =
            if n = 0 then acc
            else to_binary (n / 2) (string_of_int (n mod 2) ^ acc)
        in to_binary (List.fold_left (+) 0 (digits_of_int n)) ""
and digits_of_int (n : int) : int list =
    if n = 0 then []
    else digits_of_int (n / 10) @ [n mod 10]


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a positive integer N, return the total sum of its digits in binary. *)
(*     Example *)
(*     >>> solve 1000 *)
(*     "1" *)
(*     >>> solve 150 *)
(*     "110" *)
(*     >>> solve 147 *)
(*     "1100" *)
(*     Variables: *)
(*     @N integer *)
(*     Constraints: 0 ≤ N ≤ 10000. *)
(*     Output: *)
(*     a string of binary number *)
