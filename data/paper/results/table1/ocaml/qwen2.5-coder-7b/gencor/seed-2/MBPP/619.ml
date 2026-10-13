
let rec move_num (test_str : string) : string = 
    let rec find_num idx str acc = 
        if idx = String.length str then (acc, str)
        else 
            let (digit, rest) = 
                if Char.code (String.get str idx) >= 48 && Char.code (String.get str idx) <= 57 
                then (Char.escaped (String.get str idx), String.sub str (idx + 1) (String.length str - idx - 1))
                else ("", String.sub str (idx + 1) (String.length str - idx - 1)) 
            in 
            find_num idx rest (acc ^ digit) 
    in 
    let (num, rest) = find_num 0 test_str "" in 
    rest ^ num

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to move all the numbers to the end of the given string. *)
