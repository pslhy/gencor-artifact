let rec count_Substrings (s : string) : int = 
    let rec helper (index : int) (seen : int array) (sum : int) (count : int) : int =
        if index = String.length s then 
            count 
        else 
            let new_sum = sum + (int_of_char s.[index] - int_of_char '0') in
            let target_sum = new_sum - (index + 1) in
            let new_count = count + seen.(target_sum) in
            seen.(target_sum) <- seen.(target_sum) + 1;
            helper (index + 1) seen new_sum new_count
    in
    let seen = Array.make (2 * String.length s + 1) 0 in
    seen.(1) <- 1;
    helper 0 seen 0 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of substrings with the sum of digits equal to their length. *)
