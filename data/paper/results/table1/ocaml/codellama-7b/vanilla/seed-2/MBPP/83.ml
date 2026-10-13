let rec get_Char (strr : string) : string =
    match strr with
        | "" -> ""
        | strrr ->
            let remainder : int =
                let base : int = Char.code strrr.[0]
                let power : int = String.length strrr
                let sum : int = base + ((power) * base) in
                    sum mod 26 in
            let s_reminder : int = Char.chr remainder in
            let s_res : string = Char.escaped s_reminder in
            let s_strrr : string = s_res :: "" in
            get_Char (String.sub strr 1 (String.length strr - 1))
   

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the character made by adding the ASCII value of all the characters of the given string modulo 26. *)
