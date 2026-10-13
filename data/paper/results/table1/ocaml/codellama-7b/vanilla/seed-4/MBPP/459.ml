let rec remove_uppercase (str1 : string) : string = 
    let len = String.length str1 in 
    if len = 0 then 
        "" 
    else 
        let c1 = str1.[0] in 
        let sub = str1.[1 .. len - 1] in 
        if Char.uppercase c1 = c1 then 
            remove_uppercase sub 
        else 
            "". ^ (Char.escaped c1) ^ remove_uppercase sub 
    end

let test () = 
    assert (remove_uppercase "Hello, World!" = "hello, world!"); 
    assert (remove_uppercase "HELLO, WORLD!" = "hello, world!"); 
    assert (remove_uppercase "hello, world!" = "hello, world!"); 
    assert (remove_uppercase "HELLO, WORLD" = "hello, world"); 
    ()

test ();;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove uppercase substrings from a given string. *)
