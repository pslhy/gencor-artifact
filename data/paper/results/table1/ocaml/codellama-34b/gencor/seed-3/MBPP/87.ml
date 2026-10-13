
let rec merge_dictionaries_three (dict1 : (string * string) list) (dict2 : (string * string) list) (dict3 : (string * string) list) : (string * string) list =
  let dict1' = dict1 and dict2' = dict2 and dict3' = dict3 in
  if not dict1' then
    if not dict2' then
      if not dict3' then
        []
      else
        dict3'
    else
      if not dict3' then
        dict2'
      else
        merge_dictionaries_three dict2' dict3'
  else
    if not dict2' then
      if not dict3' then
        dict1'
      else
        merge_dictionaries_three dict1' dict3'
    else
      if not dict3' then
        merge_dictionaries_three dict1' dict2'
      else
        let rec loop (dict1' : (string * string) list) (dict2' : (string * string) list) (dict3' : (string * string) list) : (string * string) list =
          match dict1' with
          | h1 :: t1 ->
            let key1 = fst h1 and value1 = snd h1 in
            (match dict2' with
             | h2 :: t2 ->
               let key2 = fst h2 and value2 = snd h2 in
               (match value1, value2 with
                | `Bool b1, `Bool b2 -> if b1 = b2 then
                  merge_dictionaries_three t1 t2
                | `Int i1, `Int i2 -> if i1 = i2 then
                  merge_dictionaries_three t1 t2
                | `Float f1, `Float f2 -> if f1 = f2 then
                  merge_dictionaries_three t1 t2
                | _ ->
                  merge_dictionaries_three (h1 :: t1) (h2 :: t2))
             | [] ->
               loop t1 dict2' dict3')
          | [] ->
            loop dict2' dict3'
        in
        loop dict1' dict2' dict3'

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to merge three dictionaries into a single association list. *)
