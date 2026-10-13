
let rec remove_parenthesis (items : string list) : string =
  if List.length items <= 1 then
    items |> List.map (fun x -> x.("(".[0] <> x.[String.length x - 1] <> ")"))
  else
    let rec helper = fun
      matchCase (path, used)
      | [] -> path
      |> (fun s -> String.sub)
      |> (fun pos -> snd (String.index_from ignore snd("(")))
      |> (fun pos ->
          let desc = snd (String.sub snd(snd (String.index_from ignore)
      |> (fun desc ->
          match snd (String.index_from ignore snd) with
          | Some p -> if char_of_int(String.get snd) = ')':: remove_parenthesis (snd: aimeresse s desc) in_channel_length snd
          |> (fun s -> String.sub snd)
          |> (fun desc -> String.sub snd (snd (String.index_from ignore)
          |> (fun desc ->
            match snd (String.index_from ignore snd) with
              Some p -> if (string_of_int(String.sub (snd (String.index_from ignore snd))).[2]) <> ")":: remove_parenthesis (snd: aimeresse s desc) in_channel_length snd
              |> (fun s -> String.sub snd)
              |> (fun desc -> String.sub snd (snd (String.index_from ignore)
              |> (fun desc ->
                match snd (String.index_from ignore snd) with
                  Some p -> if (string_of_int(String.sub (snd (String.index_from ignore snd))).[3]) <> ")":: remove_parenthesis (snd: aimeresse s desc) in_channel_length snd
                  |> (fun s -> String.sub snd)
                  |> (fun desc -> String.sub snd (snd (String.index_from ignore)
                  |> (fun desc ->
                    match snd (String.index_from ignore snd) with
                      Some p -> if (string_of_int(String.sub (snd (String.index_from ignore snd))).[4]) <> ")":: remove_parenthesis (snd: aimeresse s desc) in_channel_length snd
                      |> (fun s -> String.sub snd)
                      |> (fun desc -> String.sub snd (snd (String.index_from ignore)
                      |> (fun desc ->
                        match snd (String.index_from ignore) snd with
                          Some p -> if (string_of_int (String.sub (snd (String.index_from ignore snd))).[1] <= '9' || (string_of_int (String.sub (snd (

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove the parenthesis and what is inbetween them from a string. *)
