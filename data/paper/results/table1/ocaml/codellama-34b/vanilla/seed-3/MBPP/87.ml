let rec merge_dictionaries_three (dict1 : (string * string) list) (dict2 : (string * string) list) (dict3 : (string * string) list) : (string * string) list =
  let dict1' = dict1 and dict2' = dict2 and dict3' = dict3 in
  if not dict1' and not dict2' and not dict3' then
    []
  else if (not dict1' or not dict2') and not dict3' then
    merge_dictionaries_two dict1' dict2'
  else if not dict1' and (not dict2' or not dict3') then
    merge_dictionaries_two dict2' dict3'
  else if not dict2' and (not dict1' or not dict3') then
    merge_dictionaries_two dict1' dict3'
  else
    merge_dictionaries_three_inner dict1' dict2' dict3'
and merge_dictionaries_two (dict1 : (string * string) list) (dict2 : (string * string) list) : (string * string) list =
  let dict1' = dict1 and dict2' = dict2 in
  if not dict1' and not dict2' then
    []
  else if not dict1' then
    dict2'
  else if not dict2' then
    dict1'
  else
    merge_dictionaries_two_inner dict1' dict2'
and merge_dictionaries_two_inner (dict1 : (string * string) list) (dict2 : (string * string) list) : (string * string) list =
  let rec loop acc (dict1 : (string * string) list) (dict2 : (string * string) list) =
    match dict1, dict2 with
    | [], _ -> dict2
    | _, [] -> dict1
    | ((key, value) as elem) :: dict1', ((key2, value2) as elem2) :: dict2' ->
      if key < key2 then
        loop ((key, value) :: acc) dict1' dict2
      else
        let i = loop acc (List.sort compare dict1') dict2 in
        if i = 0 then
          (key2, value2) :: i
        else
          i
  in
  loop [] dict1' dict2'
and merge_dictionaries_three_inner (dict1 : (string * string) list) (dict2 : (string * string) list) (dict3 : (string * string) list) : (string * string) list =
  let dict1' = dict1 and dict2' = dict2 and dict3' = dict3 in
  if not dict1' and not dict2' and not dict3' then
    []
  else if (not dict1' or not dict2') and not dict3' then
    merge_dictionaries_two dict1' dict2'
  else if not dict2' and (not dict1' or not dict3') then
    merge_dictionaries_two dict1' dict3'
  else if not dict1' and (not dict2' or not dict3') then
    merge_dictionaries_two dict2' dict3'
  else
    merge_dictionaries_three_inner_inner dict1' dict2' dict3'
and merge_dictionaries_three_inner_inner (dict1 : (string * string) list) (dict2 : (string * string) list) (dict3 : (string * string) list) : (string * string) list =
  let rec loop acc (dict1 : (string * string) list) (dict2 : (string * string) list) (dict3 : (string * string) list) =
    match dict1, dict2, dict3 with
    | [], _ , _ -> dict2 @ dict3
    | _, [], _ -> dict1 @ dict3
    | _, _, [] -> dict1 @ dict2
    | ((key, value) as elem) :: dict1', ((key2, value2) as elem2) :: dict2', ((key3, value3) as elem3) :: dict3' ->
      if key < key2 then
        if key < key3 then
          loop ((key, value) :: acc) dict1' dict2' dict3'
        else
          loop ((key3, value3) :: (key, value) :: acc) dict1' dict2' dict3'
      else if key2 < key then
        if key2 < key3 then
          loop ((key2, value2) :: acc) dict1' dict2' dict3'
        else
          loop ((key3, value3) :: (key2, value2) :: acc) dict1' dict2' dict3'
      else
        loop ((key3, value3) :: acc) dict1' dict2' dict3'
  in
  loop [] dict1' dict2' dict3'


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to merge three dictionaries into a single association list. *)
