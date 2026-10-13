let rec histogram (test : string) : (string * int) list = 
  let split_string input = 
    let rec split acc chars = 
      match chars with 
      | [] -> List.rev acc 
      | '-' :: rest -> split (List.rev acc) rest 
      | char :: rest -> split ((char :: acc) :: (List.rev acc)) rest 
    in 
    split [] (List.of_seq (String.to_seq input))
  in
  let rec count_chars chars count_map = 
    match chars with 
    | [] -> count_map 
    | char :: rest -> 
      let new_map = 
        match count_map with 
        | (letter, count) :: rest -> 
          if letter = char then 
            (letter, count + 1) :: rest 
          else 
            (let new_count = ref 1 in 
             if rest = [] then 
               (char, !new_count) :: [] 
             else if letter < char then 
               (letter, count) :: (count_chars rest (char, !new_count)) 
             else 
               (count_chars rest (let new_count = ref 1 in 
                                  if rest = [] then 
                                    (char, !new_count) :: [] 
                                  else if letter < (List.hd rest) then 
                                    (letter, count) :: (count_chars rest (char, !new_count)) 
                                  else 
                                    rest)) @ [(char, !new_count)]) 
      in 
      count_chars rest new_map 
  in
  let rec find_max_count count_map max_count acc = 
    match count_map with 
    | [] -> acc 
    | (letter, count) :: rest -> 
      if count > max_count then 
        find_max_count rest count [(letter, count)] 
      else if count = max_count then 
        find_max_count rest count ((letter, count) :: acc) 
      else 
        find_max_count rest max_count acc 
  in
  let split_list lst = 
    let rec split acc lst = 
      match lst with 
      | [] -> List.rev acc 
      | x :: xs -> split (x :: acc) xs 
    in 
    split [] lst 
  in
  let chars_list = split_string test in
  let count_map = count_chars chars_list [] in
  let max_count = 
    let rec find_max acc count_map = 
      match count_map with 
      | [] -> acc 
      | (_, count) :: rest -> find_max (if count > acc then count else acc) rest 
    in 
    find_max 0 count_map 
  in
  find_max_count count_map max_count []


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a string representing a space separated lowercase letters, return an association list *)
(*     of the letter with the most repetition and containing the corresponding count. *)
(*     If several letters have the same occurrence, return all of them. *)
(*     Example: *)
(*     >>> histogram "a b c" *)
(*     [("a", 1); ("b", 1); ("c", 1)] *)
(*     >>> histogram "a b b a" *)
(*     [("a", 2); ("b", 2)] *)
(*     >>> histogram "a b c a b" *)
(*     [("a", 2); ("b", 2)] *)
(*     >>> histogram "b b b b a" *)
(*     [("b", 4)] *)
(*     >>> histogram "" *)
(*     [] *)
