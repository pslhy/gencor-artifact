let rec find_literals (text : string) (pattern : string) :  string * int * int = 
    let open Re in 
    let m =exec (compile pattern) text in
    if length m > 0 then
        (match must m with
         | (`Seq [Node n ; _] , _) -> 
             let splits = Re.split_n (compile n) text in
             ((match splits with 
                | [start ; _ ; end_] -> start^(take end_ splits) end), 
              (String.length start), (String.length start + (String.length (String.sub text (String.length start) (String.length end_)))))
    else
        ("", -1, -1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to search a string for a regex pattern. The function should return the matching subtring, a start index and an end index. *)
