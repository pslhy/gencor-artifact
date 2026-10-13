let rec specialFilter (nums : int list) : int =
    match nums with
    | [] -> 0
    | head :: tail ->
        let first_digit = head / 10
        let last_digit = head mod 10
        if first_digit > 10 && last_digit > 10 && (first_digit mod 2 = 1 || last_digit mod 2 = 1)
        then 1
        else 0

let specialFilter nums =
    List.fold_left (fun acc x -> acc + specialFilter x) 0 nums


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes a list of numbers as input and returns *)
(*     the number of elements in the list that are greater than 10 and both *)
(*     first and last digits of a number are odd (1, 3, 5, 7, 9). *)
(*     For example: *)
(*     >>> specialFilter [15; (-73); 14; (-15)] *)
(*     1 *)
(*     >>> specialFilter [33; (-2); (-3); 45; 21; 109] *)
(*     2 *)
