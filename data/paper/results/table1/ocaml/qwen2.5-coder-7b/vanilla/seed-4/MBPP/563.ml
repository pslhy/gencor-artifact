let rec extract_values (text : string) : string list = 
  let rec find_quotations acc = function
    | [] -> List.rev acc
    | '"' :: '"' :: rest -> find_quotations ("\"" :: acc) rest
    | '"' :: rest -> 
        let rec collect_chars chars = function
          | '"' :: '"' :: rest -> 
              find_quotations (List.rev ("\"" :: chars) :: acc) rest
          | '"' :: rest -> find_quotations acc rest
          | c :: rest -> collect_chars (c :: chars) rest
          | [] -> find_quotations (List.rev ("\"" :: chars) :: acc) rest
        in collect_chars [] rest
    | c :: rest -> find_quotations acc rest
  in find_quotations [] (text |> explode |> List.rev)
  where
    let explode s = List.of_seq (String.to_seq s)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to extract values between quotation marks from a string. *)
