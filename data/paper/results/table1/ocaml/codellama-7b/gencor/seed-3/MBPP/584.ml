
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
    |> (fun (s, p) ->
        s ^ find_adverbs (String.sub text (String.length text - String.length s + 1) (String.length text - String.length s)))
    |> (fun (s, ps) ->
        match snd (String.split_on_char (snd (String.split_on_char snd text)) (fst (String.split_on_char snd text))) with
        | [] -> snd (String.split_on_char snd text), [fst (String.split_on_char snd text)]
        | _ -> snd (String.split_on_char snd text), [fst (String.split_on_char snd text); List.hd (List.rev (fst (String.split_on_char snd text)))])

let find_adverb_positions text =
  let words = String.split_on_char ' ' text in
  let adverbs = List.map find_adverbs words in
  List.map (fun (s, p) -> String.concat " " (s :: snd (String.split_on_char snd text)), p) adverbs |> List.filter (fun (_, ps) -> List.length ps > 0)

let () =
  print_endline (find_adverb_positions "She sells seashells by the seashore.");
  print_endline (find_adverb_positions "He is a doctor");
  print_endline (find_adverb_positions "She sells seashells on the seaside");
  print_endline (find_adverb_positions "The lazy fox slept all night");

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the first adverb ending with ly and its positions in a given string. *)
