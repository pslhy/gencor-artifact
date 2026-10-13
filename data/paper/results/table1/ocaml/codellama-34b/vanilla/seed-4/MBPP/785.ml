let rec tuple_str_int (test_str : string) :  int * int * int = 
    let (open_brac, cls_brac) = (Str.regexp "\\(|\\)") in 
    (* Regular Expression for finding incomplete brackets*) 
    let (num_regexp, cls_brac) = (Str.regexp "-?[0-9]+") in 
    (* Regular Expression for finding numbers*) 
    let num_lst = Str.full_split num_regexp test_str in 
    (* splits the string into a list of numbers*) 
    let rec loop index list_num = 
        match list_num with 
        | []-> ()
        | hd::tl -> (
            match hd with 
            | Str.Text  s-> (
                match s with 
                | "(" -> loop (index+1) tl
                | ")" -> loop (index-1) tl
                | _ -> loop index tl
            ) 
            | Str.Delim s -> loop (index+1) tl
            | Str.Str   s -> loop index tl
        )
    in loop 0 num_lst


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert tuple string to integer tuple. *)
