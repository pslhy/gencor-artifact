(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to move all the numbers to the end of the given string. *)
let rec move_num (test_str : string) : string = 
    let rec find_num idx str acc = 
        if idx = String.length str then (acc, str)
        else 
            let (digit, rest) = 
                if Char.is_digit (String.get str idx) 
                then (String.make 1 (String.get str idx), String.sub str (idx + 1) (String.length str - (idx + 1)))
                else ("", String.sub str (idx + 1) (String.length str - (idx + 1))) 
            in 
            find_num (idx + 1) rest (acc ^ digit) 
    in 
    let (num_part, non_num_part) = find_num 0 test_str "" in 
    non_num_part ^ num_part

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:20: Unbound value "Char.is_digit" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec move_num (test_str : string) : string = 
    let rec find_num idx str acc = 
        if idx = String.length str then (acc, str)
        else 
            let (digit, rest) = 
                if test_str.[idx] >= '0' && test_str.[idx] <= '9' then (String.make 1 test_str.[idx], String.sub str (idx + 1) (String.length str - (idx + 1)))
                else ("", String.sub str (idx + 1) (String.length str - (idx + 1))) 
            in 
            find_num (idx + 1) rest (acc ^ digit) 
    in 
    let (num_part, non_num_part) = find_num 0 test_str "" in 
    non_num_part ^ num_part

