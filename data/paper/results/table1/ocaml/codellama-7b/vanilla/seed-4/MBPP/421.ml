let rec concatenate_tuple (test_tup :  string * string * int * string) : string = 
    let (open_brac, clsh_brac, comma, semi_colon) :  string * string * string * string = ("", "", "", "") in
    let n = 4 in
    let rec concatrec (i : int) : string = 
        if (i >= n) then ""
        else if (i != 0) then open_brac ^ " " ^ (fst (test_tup.(i)) ^ comma) ^ " " ^(snd (test_tup.(i)) ^ semi_colon) ^ " " ^ (concatrec (i + 1))
        else open_brac ^ " " ^ (fst (test_tup.(i)) ^ comma) ^ " " ^(snd (test_tup.(i)) ^ semi_colon ^ clsh_brac) in
    concatrec 0 in
concatenate_tuple (("[", ",", "]", ";"))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to concatenate each element of tuple by the delimiter. *)
