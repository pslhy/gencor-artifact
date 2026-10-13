let rec count_occurance (s : string) : int =
    let rec aux (s : string) (acc : int) : int =
        if String.length s = 0 then
            acc
        else if String.sub s 0 2 = "st" then
            aux (String.sub s 1 (String.length s - 1)) (acc + 1)
        else
            aux (String.sub s 1 (String.length s - 1)) acc
    in
    aux s 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count the number of occurence of the string 'std' in a given string. *)
