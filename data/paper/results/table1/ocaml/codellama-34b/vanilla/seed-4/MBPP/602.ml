let rec first_repeated_char (str1 : string) : string option = 
    (* Iterate through each character and search for its occurence in the remaining part of the string *)
    match str1 with
    | "" -> None
    | str2 :: rest -> 
        let rec search_occurence (ch : string) (rest : string) : bool = 
            match rest with
            | "" -> false
            | ch2 :: re -> if ch = ch2 then true else search_occurence ch rest
        in
        if search_occurence str2 rest then Some(str2)
	else None


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the first repeated character in a given string. *)
