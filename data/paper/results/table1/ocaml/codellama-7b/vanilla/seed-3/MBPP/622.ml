let rec get_median (arr1 : int list) (arr2 : int list) (n : int) : float =
  if n = 0 then
    failwith "Lists are not of the same size"
  else
    let rec mergearr (acc : float list) (arr1 : int list) (arr2 : int list) (n : int) : float list =
      match (arr1, arr2) with
      | (hd1 :: tl1, hd2 :: tl2) ->
          mergearr ((float hd1 +. float hd2) /. 2.0 :: acc) tl1 tl2 (n - 1)
      | (hd1 :: tl1, []) ->
          mergearr ((float hd1) :: acc) tl1 [] (n - 1)
      | ([], hd2 :: tl2) ->
          mergearr ((float hd2) :: acc) [] tl2 (n - 1)
      | ([], []) ->
          acc
    in
    let rec recurse (arr1 : int list) (arr2 : int list) (n : int) (acc : float list) : float list =
      match (arr1, arr2) with
      | (hd1 :: tl1, hd2 :: tl2) ->
          recurse tl1 tl2 (n - 1) (mergearr acc hd1 hd2 n)
      | (hd1 :: tl1, []) ->
          recurse tl1 [] (n - 1) (mergearr acc hd1 [] n)
      | ([], hd2 :: tl2) ->
          recurse [] tl2 (n - 1) (mergearr acc [] hd2 n)
      | ([], []) ->
          acc
    in
    List.rev (recurse arr1 arr2 n [])


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the median of two sorted lists of same size. *)
