let rec odd_length_sum (arr : int list) : int =
    match arr with
    | [] -> 0
    | h :: t -> 
        if (List.length t) mod 2 = 1
        then h + odd_length_sum (t)
        else odd_length_sum t
    in
    odd_length_sum arr

(*
Test case:
let my_list = [4; 2; 4; 3; 1; 5]
let result = odd_length_sum my_list
println_int result
=> 29; (4 + 3 + 1)

let my_list1 = [4; 2; 4]
let result1 = odd_length_sum my_list1
println_int result1
=> 8; (4)

let my_list2 = [4; 2]
let result2 = odd_length_sum my_list2
println_int result2
=> 6; (2 + 4)
*)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of all odd length sublists. https://www.geeksforgeeks.org/sum-of-all-odd-length-sublists/ *)
