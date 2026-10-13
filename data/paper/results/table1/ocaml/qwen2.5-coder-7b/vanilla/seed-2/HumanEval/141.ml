let rec file_name_check (file_name : string) : string = 
    let count_digits = 
        let rec count acc s = 
            match s with
            | [] -> acc
            | c :: rest -> if c >= '0' && c <= '9' then count (acc + 1) rest else count acc rest
        in count 0 (String.to_seq file_name) 
    in
    let split = String.split_on_char '.' file_name in
    let before_dot, after_dot = match split with
        | [ before; after ] -> (before, after)
        | _ -> ("", "") 
    in
    if count_digits <= 3 && 
       String.length split = 2 && 
       before_dot <> "" && 
       before_dot.[0] >= 'a' && before_dot.[0] <= 'z' || 
       before_dot.[0] >= 'A' && before_dot.[0] <= 'Z' && 
       List.mem after_dot ["txt"; "exe"; "dll"] 
    then "Yes" else "No"


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Create a function which takes a string representing a file's name, and returns *)
(*     'Yes' if the the file's name is valid, and returns 'No' otherwise. *)
(*     A file's name is considered to be valid if and only if all the following conditions *)
(*     are met: *)
(*     - There should not be more than three digits ('0'-'9') in the file's name. *)
(*     - The file's name contains exactly one dot '.' *)
(*     - The substring before the dot should not be empty, and it starts with a letter from *)
(*     the latin alphapet ('a'-'z' and 'A'-'Z'). *)
(*     - The substring after the dot should be one of these: ['txt', 'exe', 'dll'] *)
(*     Examples: *)
(*     >>> file_name_check "example.txt" *)
(*     "Yes" *)
(*     >>> file_name_check "1example.dll" *)
(*     "No" *)
