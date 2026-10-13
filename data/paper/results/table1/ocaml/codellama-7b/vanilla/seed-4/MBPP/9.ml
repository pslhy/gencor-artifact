let rec find_Rotations (str : string) : int = 
    let len = String.length str in
    if len = 1 then
        0
    else
        let rev_str = String.rev str in
        if rev_str = str then
            1
        else
            find_Rotations rev_str

And find_Rotations "hello" => answer 1 ; find_Rotations "greetings" => answer 3


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the minimum number of rotations (greater than 0) required to get the same string. *)
