let rec count_Substrings (s : string) : int =
    let rec aux (i : int) (acc : int) (sum : int) : int =
        if i < 0 then acc
        else if sum = i then aux (i - 1) (acc + 1) (sum - i)
        else aux (i - 1) acc (sum + (int_of_digit (String.get s i)))
    in
    aux (String.length s - 1) 0 0

and int_of_digit (c : char) : int =
    match c with
    | '0' .. '9' -> Char.code c - Char.code '0'
    | _ -> invalid_arg "invalid digit"
in
count_Substrings "0123" ;;

(* output: 2 *)

count_Substrings "12345" ;;

(* output: 8 *)

count_Substrings "a1b2c3" ;;

(* output: 0 *)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of substrings with the sum of digits equal to their length. *)
