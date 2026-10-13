let rec find_adverbs (text : string) : string =
  if String.length text <= 1 then
    "", []
  else begin
    match text.[0] with
    | 'a'..'z' | 'A'..'Z' | '0'..'9' -> find_adverbs (String.sub text 1 (String.length text - 1))
    | _ -> begin
            match text.[1] with
            | 'a'..'z' | 'A'..'Z' | '0'..'9' -> "", []
            | _ -> begin
                    match text.[2] with
                    | 'a'..'z' | 'A'..'Z' | '0'..'9' -> "", []
                    | _ -> if text.[0] = 'l' && text.[1] = 'y' then ((text.[0] ^ text.[1]) : string), [String.length text - 2] else "", []
                end
                | _ -> "", []
            end
           | _ -> "", []
          end
    | _ -> "", []
  end

let (adverb, positions) = find_adverbs "Some text containing the adverbially ending ly."


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the first adverb ending with ly and its positions in a given string. *)
