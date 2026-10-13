
let rec rolling_max (numbers : int list) : int list =
    match numbers with
    | [] -> []
    | _ ->
        let max = numbers
        |> List.map (fun (x, y) -> (x, max y x))
        |> List.fold_left (fun max (x, y) -> max max) 0
        |> fun x -> x :: [0]
        |> List.append numbers
rolling_max [1; 2; 3; 2; 3; 4; 2]

rolling_max :: (Int64.to_string []) =
    [ 1L; 2L; 3L; 3L; 3L; 4L; 4L ]

rolling_max :: (Float.to_string []) =
    [ 1epsilon_float; 2epsilon_float; 3epsilon_float; 3epsilon_float; 3epsilon_float; 4epsilon_float; 4epsilon_float ]

rolling_max :: (String.to_seq []) =
    [ "a1"; "bb2";]

rolling_max :: (Int.to_string []) =
    let letters = "abcdef";
    List.filter (fun x -> x |> 1) :: [1; 2; 3; 2; 3; 4; 2]
    |> List.fold_left (fun acc x -> acc @ [x]) []
    |> List.map (fun x -> x / 1_000_000_000L)
    |> List.map (fun x -> (let letters = Int.to_string x
                           in List.of_seq (Seq.append letters "_" |> Seq.append letters)
                           |> List.iter (fun y -> print_string (Char.escaped y))))
    |> print_string "\n"
    List.filter (fun x -> x |> 1) :: [1; 2; 3; 2; 3; 4; 2]
      |>
      List.fold_left (fun acc x -> acc @ [x]) []
      |> List.map (fun x -> x / 1_000_050_000L)
      |> List.map (fun x -> (let letters = Int.to_string x
    
    List.map (fun x -> x / 1_000_000_000L)
      |> List.map (fun x -> (let letters = Int.to_string x
                             in List.of_seq (Seq.append letters "_" |> Seq.append letters)
                             |> List.iter (fun y -> print_string (Char.escaped y))))
      |> print_string "\n"
      List.filter (fun x -> x |> 1) :: [1; 2; 3; 2; 3; 4; 2]
        |>
        List.fold_left (fun acc x -> acc @ [x]) []
        |> List.map (fun x -> x / 1_000_000_000L)
        |> List.map (fun x -> (let letters = Int.to_string x
                               in List.of_seq (Seq.append letters "_" |> Seq.append letters)
                               |> List.iter (fun y -> print_string (Char.escaped y))))
        |> print_string "\n"
        List.filter (fun x -> x |> 1) :: [1; 2; 3; 2; 3; 4; 2]
          |> List.fold_left (fun acc x -> acc @ [x]) []
          |> List.map (fun x -> x / 1_000_000_000L)
          |> List.map (fun x -> (let letters = Int.to_string x
                                 in List.of_seq (Seq.append letters "_" |> Seq.append letters)
                                 |> List.iter (fun y -> print_string (Char.escaped y))))
          |> print_string "\n"
  
  rolling_max :: (Int.to_string []) =
    let letters = "abcdef";
    List.filter (fun x -> x |> 1) :: [1; 2; 3; 2; 3; 4; 2]
    |> List.fold_left (fun acc x -> acc @ [x]) []
    |> List.map (fun x -> x / 1_000_000_000L)
    |> List.map (fun x -> (let letters = Int.to_string x
                           in List.of_seq (Seq.append letters "_" |> Seq.append letters)
                           |> List.iter (fun y -> print_string (Char.escaped y))))
    |> print_string "\n"
rolling_max :: (Int.to_string []) =
    let letters = "abcdef";
    List.filter (fun x -> x |> 1) :: [1; 2; 3; 2; 3; 4; 2]
    |> List.fold_left (fun acc x -> acc @ [x]) []
    |> List.map (fun x -> x / 1_000_000_000L)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     From a given list of integers, generate a list of rolling maximum element found until given moment *)
(*     in the sequence. *)
(*     >>> rolling_max [1; 2; 3; 2; 3; 4; 2] *)
(*     [1; 2; 3; 3; 3; 4; 4] *)
