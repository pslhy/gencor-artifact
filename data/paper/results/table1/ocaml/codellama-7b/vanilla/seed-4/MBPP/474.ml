let rec replace_char (str1 : string) (ch : string) (newch : string) : string = 
    match str1 with 
      | "" -> "" 
      | c :: t -> if c = ch then newch :: replace_char t ch newch else c :: replace_char t ch newch 
      | _ -> failwith "Invalid character"


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to replace characters in a string. *)
