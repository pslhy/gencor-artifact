let rec merge_dictionaries_three (dict1 : (string * string) list) (dict2 : (string * string) list) (dict3 : (string * string) list) : (string * string) list =
    match dict1, dict2, dict3 with
    | (key1,value1) :: t1, (key2,value2) :: t2, (key3,value3) :: t3 ->
      if key1 < key2 && key1 < key3 then
        (key1,value1) :: merge_dictionaries_three t1 dict2 dict3
      else if key2 < key1 && key2 < key3 then
        (key2,value2) :: merge_dictionaries_three dict1 t2 dict3
      else if key3 < key1 && key3 < key2 then
        (key3,value3) :: merge_dictionaries_three dict1 dict2 t3
      else
        (key1,value1) :: merge_dictionaries_three t1 dict2 dict3
    | [], (key2,value2) :: t2, (key3,value3) :: t3 ->
      if key2 < key3 then
        (key2,value2) :: merge_dictionaries_three [] t2 dict3
      else
        (key3,value3) :: merge_dictionaries_three [] dict2 t3
    | (key1,value1) :: t1, [], (key3,value3) :: t3 ->
      if key1 < key3 then
        (key1,value1) :: merge_dictionaries_three t1 [] dict3
      else
        (key3,value3) :: merge_dictionaries_three [] dict1 t3
    | (key1,value1) :: t1, (key2,value2) :: t2, [] ->
      if key1 < key2 then
        (key1,value1) :: merge_dictionaries_three t1 dict2 []
      else
        (key2,value2) :: merge_dictionaries_three dict1 t2 []
    | [], [], [] -> []


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to merge three dictionaries into a single association list. *)
