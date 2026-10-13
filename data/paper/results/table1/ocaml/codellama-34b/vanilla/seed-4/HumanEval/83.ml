let rec starts_one_ends (n : int) : int = 
    (* base case: 1-digit positive integers *)
    let rec count_1_digits k = 
        if k = 0 then
            2
        else
            count_1_digits (k-1) + 9
    in
    (* base case: 2-digit or higher positive integers *)
    let rec count_gte_2_digits k = 
        if k = 3 then
            18 (* count of 3-digit numbers that start or end with 1 *)
        else if k = 4 then
            100 (* count of 4-digit numbers that start or end with 1 *)
        else
            count_gte_2_digits (k-1) + (9 * 10^(k-2)) + (9 * 10^(k-2))
    in
    if n = 1 then
        count_1_digits 1
    else
        count_gte_2_digits n
;;

let print_solution numStr =
    let num = int_of_string numStr in
    let ans = starts_one_ends num in
    print_endline ("The count of positive integer of " ^ numStr ^ " digits starting or ending with 1 is " ^ (string_of_int ans) ^ ".")
;;

print_solution "1";;
print_solution "2";;
print_solution "3";;
print_solution "4";;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a positive integer n, return the count of the numbers of n-digit *)
(*     positive integers that start or end with 1. *)
