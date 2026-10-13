let rec text_lowercase_underscore (text : string) : bool =
    let contains_sequence text =
        let rec loop i =
            if i < String.length text - 1 && text.[i] >= 'a' && text.[i] <= 'z' && text.[i] = text.[i + 1] then
                loop (i + 1)
            else
                i = String.length text - 1
        in
        loop 0
    in
    String.length text > 0 && not (contains_sequence text)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to that returns true if the input string contains sequences of lowercase letters joined with an underscore and false otherwise. *)
