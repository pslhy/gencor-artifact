let rec find_length (string : string) : int =
    if (string.[string.length - 1]) == '0' then string.length - 1
    else if (string.[string.length - 1]) == '1' then string.length - 1
    else find_length (string.[0 .. string.length - 2])

let find_max_diff (string : string) : int =
    if (string.length < 2) then 0
    else
        let max_diff = 0 in
        let rec aux (index : int) : int =
            if (index >= string.length) then max_diff
            else
                let diff = abs (find_length (string.[index .. string.length - 1]) - find_length (string.[0 .. index - 1])) in
                if (diff > max_diff) then max_diff = diff
                else aux (index + 1)
        in
        aux 1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum difference between the number of 0s and number of 1s in any sub-string of the given binary string. *)
