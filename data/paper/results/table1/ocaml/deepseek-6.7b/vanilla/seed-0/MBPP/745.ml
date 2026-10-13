let rec divisible_by_digits (startnum : int) (endnum : int) : int list =
    if startnum > endnum then []
    else 
        let num_str = string_of_int startnum in
        let nums = List.of_seq (String.to_seq num_str) in
        if List.fold_left (fun acc x -> acc && List.for_all (fun y -> (int_of_char x) mod (int_of_char y) = 0) nums) true nums then startnum :: divisible_by_digits (startnum+1) endnum
        else divisible_by_digits (startnum+1) endnum
;;



(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find numbers within a given range from startnum ti endnum where every number is divisible by every digit it contains. https://www.w3resource.com/mlthon-exercises/lambda/mlthon-lambda-exercise-24.php *)
