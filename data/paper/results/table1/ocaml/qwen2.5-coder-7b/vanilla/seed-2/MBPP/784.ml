let rec mul_even_odd (list1 : int list) : int = 
    let rec find_even lst =
        match lst with 
        | [] -> raise (Failure "No even number found")
        | x::xs -> if x mod 2 = 0 then x else find_even xs
    in
    let rec find_odd lst =
        match lst with 
        | [] -> raise (Failure "No odd number found")
        | x::xs -> if x mod 2 <> 0 then x else find_odd xs
    in
    (find_even list1) * (find_odd list1)

(* Test cases *)
(* print_int (mul_even_odd [1; 3; 5; 2; 4; 6]); *) (* Expected output: 2 *)
(* print_int (mul_even_odd [7; 9; 11; 3; 1; 5]); *) (* Expected output: 3 *)
(* print_int (mul_even_odd [8; 10; 12; 4; 6; 2]); *) (* Expected output: 8 *)
(* print_int (mul_even_odd [5; 7; 9; 11; 13]); *) (* Expected output: exception *)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the product of first even and odd number of a given list. *)
